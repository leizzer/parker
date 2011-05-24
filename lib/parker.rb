module Parker
### The tasks
  class Task
    def initialize action, options
      @action = action
      @options = options
      @files = []
      @directories = []
      @destiny = ''
    end

    # The list of files for be parkered
    def files *extentions
      fl = File.new extentions 
      @files << fl
    end

    # The list of folders added into files for be parkered
    def folders *names
      fd = Folder.new names
      @files << fd
    end

    def from *directories, &block
      fr = Directory.new directories
      fr.instance_eval &block unless block.nil?
      @directories << fr
    end

    def to destiny
      @destiniy = destiny
    end
  end

### Files
  class File
    def initialize *extentions, checks
      @files = get_files extentions, checks
    end

    # Use Dir.glob for get the list of files
    def get_files extentions, checks
      #search for files and discard with the checks
    end
    
    private
      def having
        
      end
      
      def existing
        
      end
      
      def existing_the
        
      end
  end

  class Folder < File
    
  end

### From
  class Directory
    def initialize options
      
    end

    def rename initial, final
      
    end
  end

##############################################

  def task action, *options, &block
    t = Task.new action, options
    t.instance_eval &block
    t
  end

end
